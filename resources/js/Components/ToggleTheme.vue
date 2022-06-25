<template>
    <Switch
        v-model="theme.isDark"
        :class="theme.isDark ? 'bg-base-900' : 'bg-primary-600'"
        class="relative inline-flex h-[18px] w-[38px] shrink-0 cursor-pointer rounded-full border-2 border-transparent transition-colors duration-200 ease-in-out focus:outline-none focus-visible:ring-2 focus-visible:ring-white focus-visible:ring-opacity-75"
    >
        <span class="sr-only">Use setting</span>
        <span
            aria-hidden="true"
            :class="theme.isDark ? 'translate-x-[18px]' : 'translate-x-0'"
            class="pointer-events-none inline-block h-[14px] w-[15px] transform rounded-full bg-white shadow-lg ring-0 transition duration-200 ease-in-out"
        />
    </Switch>
</template>

<script setup>
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
