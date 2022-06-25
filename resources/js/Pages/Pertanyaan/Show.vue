<template>
    <Card>
        <template #title>Pertanyaan</template>
        <template #default>
            <h3 class="mb-2 text-2xl">
                {{ props.quest.title }}
            </h3>
            <p>{{ props.quest.body }}?</p>
            <div class="mt-3 flex items-center justify-end">
                <div class="mr-2 h-10 w-10 rounded-full bg-primary-500" />
                <div class="text-sm">
                    <p class="text-gray-900 dark:text-slate-50">
                        {{ props.questBy.name }}
                    </p>
                    <p class="text-gray-600 dark:text-slate-400">Member</p>
                </div>
            </div>
        </template>
    </Card>
    <Card>
        <template #title>Jawaban</template>
        <template #default>
            <div
                class="mb-4 w-full"
                v-for="answer in props.answers"
                :key="answer.id"
            >
                <div
                    class="flex flex-col justify-between rounded-md border border-slate-200 p-4 leading-normal dark:border-slate-500"
                >
                    <div class="flex items-center">
                        <div
                            class="mr-4 h-10 w-10 rounded-full bg-primary-500"
                        />
                        <div class="text-sm">
                            <p class="text-xl text-gray-900 dark:text-slate-50">
                                {{ answer.user.name }}
                            </p>
                        </div>
                    </div>
                    <div class="mb-4 mt-2">
                        <p
                            class="text-lg font-medium text-gray-700 dark:text-slate-200"
                        >
                            {{ answer.jawaban }}
                        </p>
                    </div>
                </div>
            </div>

            <form @submit.prevent="submit" class="space-y-4">
                <div>
                    <label for="body" class="block text-sm font-medium">
                        Jawaban mu
                    </label>
                    <div class="mt-1">
                        <textarea
                            v-model="form.jawaban"
                            id="body"
                            name="body"
                            rows="3"
                            class="mt-1 block w-full rounded-md border border-gray-300 shadow-sm focus:border-primary-500 focus:ring-primary-500 dark:border-slate-500 dark:bg-base-700 dark:text-slate-50 sm:text-sm"
                            placeholder="Berikan jawaban yang detail"
                            required
                        />
                    </div>
                    <p
                        v-if="form.errors.jawaban"
                        class="mt-2 text-sm text-red-500"
                    >
                        {{ form.errors.jawaban }}
                    </p>
                    <Button class="mt-3" type="submit"> Jawabkan </Button>
                </div>
            </form>
        </template>
    </Card>
</template>

<script setup>
import Card from "../../Components/Card.vue";
import Button from "../../Components/Button.vue";
import { useForm } from "@inertiajs/inertia-vue3";

let props = defineProps({
    quest: Object,
    questBy: Object,
    answers: Object,
});

const form = useForm({
    jawaban: null,
    pertanyaan_id: props.quest.id,
});

let submit = () => {
    form.post("/jawaban", {
        preserveScroll: true,
        onSuccess: () => form.reset("jawaban"),
    });
};
</script>
