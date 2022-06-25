<template>
    <nav class="bg-base-700 px-2 py-3 text-white shadow md:px-4 lg:px-10">
        <div class="relative flex items-center gap-4">
            <div class="flex flex-1 items-center lg:justify-start">
                <Link href="/" class="text-xl font-bold text-primary-500"
                    >Tanyakan</Link
                >
                <div class="hidden sm:ml-5 sm:block">
                    <div class="flex space-x-4">
                        <Link
                            href="/home"
                            class="hover:text-primary-500 active:text-primary-700"
                            >Home</Link
                        >
                    </div>
                </div>
            </div>
            <ToggleTheme />
        </div>
    </nav>
</template>

<script setup>
import ToggleTheme from "../Components/ToggleTheme.vue";
</script>
