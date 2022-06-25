<template>
    <!-- Ajukan pertanyaan -->
    <section class="px-4 py-6 sm:px-0">
        <h1 class="mb-1 text-3xl">Tanyakan pertanyaan</h1>
        <div
            class="h-min-content rounded-lg border-2 border-slate-500 bg-slate-100 p-5 shadow dark:bg-base-800"
        >
            <h3 class="text-xl">Ingin bertanya? Tanyakan sekarang!</h3>
            <button
                class="rounded-lg bg-primary-600 px-3 py-2 text-slate-50 hover:bg-primary-700 active:bg-primary-800"
            >
                Tanya
            </button>
        </div>
    </section>

    <!-- terbaru -->
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
const quests = [
    {
        title: "perbedaan kucing sama anjing",
        body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi id repudiandae rem, illo officia facilis illum modi suscipit eaque, excepturi culpa eligendi enim aperiam? Cupiditate natus molestiae nesciunt modi totam!",
    },
    {
        title: "Matematika pytagoras",
        body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi id repudiandae rem, illo officia facilis illum modi suscipit eaque, excepturi culpa eligendi enim aperiam? Cupiditate natus molestiae nesciunt modi totam!",
    },
    {
        title: "Perbedaan herbivora dan karnivora",
        body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi id repudiandae rem, illo officia facilis illum modi suscipit eaque, excepturi culpa eligendi enim aperiam? Cupiditate natus molestiae nesciunt modi totam!",
    },
    {
        title: "Apa saja makanan bergizi",
        body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi id repudiandae rem, illo officia facilis illum modi suscipit eaque, excepturi culpa eligendi enim aperiam? Cupiditate natus molestiae nesciunt modi totam!",
    },
];
</script>
