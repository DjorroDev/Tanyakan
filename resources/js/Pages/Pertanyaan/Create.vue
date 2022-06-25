<template>
    <Card>
        <template #title>Buat pertanyaan</template>
        <template #default>
            <form @submit.prevent="submit" class="space-y-4">
                <div class="grid grid-cols-3 gap-6">
                    <div class="col-span-3 sm:col-span-2">
                        <label for="title" class="block text-sm font-medium">
                            Pertanyaan
                        </label>
                        <div class="mt-1 flex rounded-md shadow-sm">
                            <input
                                v-model="form.title"
                                type="text"
                                name="title"
                                id="title"
                                class="block w-full flex-1 rounded-md border-gray-300 focus:border-primary-500 focus:ring-primary-500 dark:border-slate-500 dark:bg-base-700 dark:text-slate-50 sm:text-sm"
                                placeholder="Fisika Inertia"
                            />
                        </div>
                    </div>
                </div>
                <div>
                    <label for="body" class="block text-sm font-medium">
                        Detail pertanyaan
                    </label>
                    <div class="mt-1">
                        <textarea
                            v-model="form.body"
                            id="body"
                            name="body"
                            rows="3"
                            class="mt-1 block w-full rounded-md border border-gray-300 shadow-sm focus:border-primary-500 focus:ring-primary-500 dark:border-slate-500 dark:bg-base-700 dark:text-slate-50 sm:text-sm"
                            placeholder="Apa itu Inertia berikan contohnya"
                        />
                    </div>
                </div>
                <div class="col-span-6 sm:col-span-3">
                    <label for="tingkat" class="block text-sm font-medium"
                        >Tingkat kesulitan</label
                    >
                    <select
                        v-model="form.tingkat"
                        id="tingkat"
                        name="tingkat"
                        autocomplete="tingkat-name"
                        class="mt-1 block w-1/3 rounded-md border border-gray-300 bg-white py-2 px-3 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 dark:border-slate-500 dark:bg-base-700 dark:text-slate-50 sm:text-sm"
                    >
                        <option>SD</option>
                        <option>SMP</option>
                        <option>SMA</option>
                    </select>
                </div>
                <Button type="submit"> Tanyakan </Button>
            </form>
        </template>
    </Card>
</template>

<script setup>
import Card from "../../Components/Card.vue";
import Button from "../../Components/Button.vue";
import { useForm } from "@inertiajs/inertia-vue3";

const form = useForm({
    title: null,
    body: null,
    tingkat: null,
});

let submit = () => {
    form.post("/pertanyaan", form);
};
</script>
