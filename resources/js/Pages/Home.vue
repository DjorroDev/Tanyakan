<template>
    <!-- Ajukan pertanyaan -->
    <Card>
        <template #title>Tanyakan Pertanyaan</template>
        <template #default>
            <h3 class="mb-3 text-xl">Ingin bertanya? Tanyakan sekarang!</h3>
            <Link
                href="/pertanyaan/create"
                class="rounded-lg bg-primary-600 px-3 py-2 text-slate-50 hover:bg-primary-700 active:bg-primary-800"
            >
                Tanya
            </Link>
        </template>
    </Card>

    <!-- terbaru -->
    <section class="px-4 py-6 sm:px-0">
        <h1 class="mb-1 text-3xl">Pertanyaan terbaru</h1>
        <div
            class="h-min-content rounded-lg border-2 border-slate-500 bg-slate-100 p-5 shadow dark:bg-base-800"
        >
            <div
                v-for="quest in quests"
                :key="quest.id"
                class="mb-4 w-full max-w-sm lg:flex lg:max-w-full"
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
            <Link
                href="/pertanyaan"
                class="my-3 text-xl underline hover:text-primary-500 active:text-primary-700"
                >Lebih banyak pertanyaan...</Link
            >
        </div>
    </section>
</template>

<script setup>
import Card from "../Components/Card";
defineProps({
    quests: Object,
});
</script>
