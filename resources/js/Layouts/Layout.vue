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
                <Switch
                    v-model="theme.isDark"
                    :class="theme.isDark ? 'bg-base-900' : 'bg-primary-600'"
                    class="relative inline-flex h-[18px] w-[38px] shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75"
                >
                    <span class="sr-only">Use setting</span>
                    <span
                        aria-hidden="true"
                        :class="
                            theme.isDark
                                ? 'translate-x-[18px]'
                                : 'translate-x-0'
                        "
                        class="pointer-events-none inline-block h-[14px] w-[15px] transform rounded-full bg-white shadow-lg ring-0 transition duration-200 ease-in-out"
                    />
                </Switch>
            </div>
        </nav>
    </header>
    <main class="h-screen bg-slate-50 pt-10 dark:bg-base-900 dark:text-white">
        <section class="container mx-auto max-w-4xl">
            <slot />
        </section>
    </main>
</template>

<script setup>
import { Link } from "@inertiajs/inertia-vue3";
import { reactive, watch } from "vue";

import { Switch } from "@headlessui/vue";

const theme = reactive({ isDark: true });

if (
    localStorage.theme === "dark" ||
    (!("theme" in localStorage) &&
        window.matchMedia("(prefers-color-scheme: dark)").matches)
) {
    document.documentElement.classList.add("dark");
    theme.isDark = true;
} else {
    document.documentElement.classList.remove("dark");
    theme.isDark = false;
}

watch(
    () => theme.isDark,
    (dark) => {
        if (dark) {
            document.documentElement.classList.add("dark");
            localStorage.theme = "dark";
        } else {
            document.documentElement.classList.remove("dark");
            localStorage.theme = "light";
        }
    }
);
</script>
