<template>
    <header>
        <nav class="bg-base-700 px-2 py-3 text-white shadow md:px-4 lg:px-10">
            <div class="relative flex items-center gap-4">
                <DisclosureButton class="py-2 md:hidden">
                    <MenuIcon class="h-6 w-6" />
                </DisclosureButton>
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
    </header>
    <main class="h-full bg-slate-50 pt-10 dark:bg-base-900 dark:text-slate-100">
        <section class="container mx-auto max-w-4xl">
            <slot />
        </section>
    </main>
</template>

<script setup>
import { Link } from "@inertiajs/inertia-vue3";
import ToggleTheme from "../Components/ToggleTheme.vue";
</script>
