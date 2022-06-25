<template>
    <Card>
        <template #title>Pertanyaan ku</template>
        <template #default>
            <h1 v-if="!myQuest" class="text-2xl">
                Kamu Belum bertanya. Ayo tanyakan sekarang!
            </h1>
            <div v-else>
                <div v-for="my in myQuest" :key="my.id">
                    <table
                        class="w-full table-fixed border-collapse border border-slate-500"
                    >
                        <tbody>
                            <tr>
                                <td
                                    class="border bg-base-100 px-8 py-2 dark:bg-base-900"
                                >
                                    {{ my.title }}
                                </td>
                                <td
                                    class="border bg-base-100 px-8 py-2 dark:bg-base-900"
                                >
                                    {{
                                        moment(my.created_at)
                                            .startOf()
                                            .fromNow()
                                    }}
                                </td>
                                <td
                                    class="border bg-base-100 px-8 py-2 dark:bg-base-900"
                                >
                                    <Link
                                        :href="`/pertanyaan/${my.id}/edit`"
                                        class="text-primary-500 hover:text-primary-50 active:text-primary-700"
                                        >Edit</Link
                                    >
                                    Hapus
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <Button class="mt-5">
                <Link href="/pertanyaan/create">Tanya</Link>
            </Button>
        </template>
    </Card>
    <FlashMessage :type="'success'" v-if="$page.props.flash.success">
        {{ $page.props.flash.success }}
    </FlashMessage>

    <section class="px-4 py-6 sm:px-0">
        <h1 class="mb-1 text-3xl">Pertanyaan</h1>
        <div
            class="h-min-content rounded-lg border-2 border-slate-500 bg-slate-100 p-5 shadow dark:bg-base-800"
        >
            <div
                v-for="quest in quests"
                :key="quest.id"
                class="mb-4 w-full max-w-sm lg:max-w-full"
            >
                <div
                    class="flex flex-col justify-between rounded-md border border-slate-200 p-4 leading-normal dark:border-slate-500"
                >
                    <div class="mb-8">
                        <Link :href="`/pertanyaan/${quest.id}`">
                            <div
                                class="mb-2 text-xl font-bold text-gray-900 dark:text-slate-50"
                            >
                                {{ quest.title }}
                            </div>
                            <p
                                class="text-base text-gray-700 dark:text-slate-200"
                            >
                                {{ quest.body }}
                            </p>
                        </Link>
                    </div>
                    <div class="flex items-center">
                        <div
                            class="mr-4 h-10 w-10 rounded-full bg-primary-500"
                        />
                        <div class="text-sm">
                            <p
                                class="leading-none text-gray-900 dark:text-slate-50"
                            >
                                {{ quest.user.name }}
                            </p>
                            <p class="text-gray-600 dark:text-slate-400">
                                Aug 18
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<script setup>
import Card from "../../Components/Card.vue";
import Button from "../../Components/Button.vue";
import FlashMessage from "../../Components/FlashMessage.vue";
import moment from "moment";

defineProps({
    quests: Object,
    myQuest: Object,
});
</script>
