<template>
    <Card>
        <template #title>Buat pertanyaan Lama</template>
        <template #default>
            <form action=""
                class="space-y-4"
            >
                <div class="grid grid-cols-3 gap-6">
                    <div class="col-span-3 sm:col-span-2">
                        <label
                            for="company-website"
                            class="block text-sm font-medium"
                        >
                            Pertanyaan
                        </label>
                        <div class="mt-1 flex rounded-md shadow-sm">
                            <input
                                type="text"
                                name="company-website"
                                id="company-website"
                                class="block w-full flex-1 rounded-md border-gray-300 focus:border-primary-500 focus:ring-primary-500 sm:text-sm"
                                placeholder="Fisika Inertia"
                            />
                        </div>
                    </div>
                </div>
                <div>
                    <label for="about" class="block text-sm font-medium "> Detail pertanyaan </label>
                    <div class="mt-1">
                      <textarea id="about" name="about" rows="3" class="shadow-sm focus:ring-primary-500 focus:border-primary-500 mt-1 block w-full sm:text-sm border border-gray-300 rounded-md" placeholder="Apa itu Inertia berikan contohnya" />
                    </div>
                </div>
                <div class="col-span-6 sm:col-span-3">
                  <label for="country" class="block text-sm font-medium text-gray-700">Tingkat kesulitan</label>
                  <select id="country" name="country" autocomplete="country-name" class="mt-1 block w-1/3 py-2 px-3 border border-gray-300 bg-white rounded-md shadow-sm focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 sm:text-sm">
                    <option>SD</option>
                    <option>SMP</option>
                    <option>SMA</option>
                  </select>
                </div>
                  
            </form>
        </template>
    </Card>
</template>

<script setup>
import Card from "../../Components/Card.vue";
</script>
