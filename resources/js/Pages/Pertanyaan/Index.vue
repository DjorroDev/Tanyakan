<template>
    <section class="px-4 py-6 sm:px-0">
        <h1 class="mb-1 text-3xl">Pertanyaan terbaru</h1>
        <div
            class="h-min-content rounded-lg border-2 border-slate-500 bg-slate-100 p-5 shadow dark:bg-base-800"
        >
            <div
                v-for="(quest, index) in quests"
                :key="index"
                class="mb-4 w-full max-w-sm lg:flex lg:max-w-full"
            >
                <div
                    class="flex flex-col justify-between rounded-md border border-slate-200 p-4 leading-normal dark:border-slate-500"
                >
                    <div class="mb-8">
                        <div
                            class="mb-2 text-xl font-bold text-gray-900 dark:text-slate-50"
                        >
                            {{ quest.title }}
                        </div>
                        <p class="text-base text-gray-700 dark:text-slate-200">
                            {{ quest.body }}
                        </p>
                    </div>
                    <div class="flex items-center">
                        <div
                            class="mr-4 h-10 w-10 rounded-full bg-primary-500"
                        />
                        <div class="text-sm">
                            <p
                                class="leading-none text-gray-900 dark:text-slate-50"
                            >
                                Jonathan Reinink
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
defineProps({
    quests: Object,
});
</script>
