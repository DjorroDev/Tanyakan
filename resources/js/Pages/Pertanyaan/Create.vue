<template>
    <Card>
        <template #title>Buat pertanyaan</template>
        <template #default>
            <form action=""
                class="space-y-4"
            >
                <div class="grid grid-cols-3 gap-6">
                    <div class="col-span-3 sm:col-span-2">
                        <label
                            for="title"
                            class="block text-sm font-medium"
                        >
                            Pertanyaan
                        </label>
                        <div class="mt-1 flex rounded-md shadow-sm">
                            <input
                                type="text"
                                name="title"
                                id="title"
                                class="block w-full flex-1 rounded-md border-gray-300 focus:border-primary-500 focus:ring-primary-500 sm:text-sm dark:bg-base-700 dark:text-slate-50 dark:border-slate-500"
                                placeholder="Fisika Inertia"
                            />
                        </div>
                    </div>
                </div>
                <div>
                    <label
                        for="body" 
                        class="block text-sm font-medium"
                    > Detail pertanyaan </label>
                    <div class="mt-1">
                        <textarea
                            id="body"
                            name="body"
                            rows="3"
                            class="shadow-sm dark:bg-base-700 dark:text-slate-50 dark:border-slate-500 focus:ring-primary-500 focus:border-primary-500 mt-1 block w-full sm:text-sm border border-gray-300 rounded-md" placeholder="Apa itu Inertia berikan contohnya" 
                        />
                    </div>
                </div>
                <div class="col-span-6 sm:col-span-3">
                    <label
                        for="tingkat"
                        class="block text-sm font-medium"
                    >Tingkat kesulitan</label>
                    <select
                        id="tingkat"
                        name="tingkat"
                        autocomplete="tingkat-name"
                        class="dark:bg-base-700 dark:text-slate-50 dark:border-slate-500 mt-1 block w-1/3 py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm"
                    >
                        <option>SD</option>
                        <option>SMP</option>
                        <option>SMA</option>
                    </select>
                </div>
                <Button type="submit">
                    Tanyakan
                </Button>
            </form>
        </template>
    </Card>
</template>

<script setup>
import Card from "../../Components/Card.vue";
import Button from "../../Components/Button.vue";
</script>
