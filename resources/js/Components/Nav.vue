<template>
    <nav
        class="bg-base-500 px-2 py-3 text-white shadow dark:bg-base-700 md:px-4 lg:px-10"
    >
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
                        <Link
                            href="/pertanyaan"
                            class="hover:text-primary-500 active:text-primary-700"
                            >Pertanyaan</Link
                        >
                    </div>
                </div>
            </div>
            <ToggleTheme />
            <Link
                v-if="!user"
                class="hover:text-primary-500 active:text-primary-700"
                href="/login"
                >Login</Link
            >
            <Link
                v-if="!user"
                class="text-primary-500 hover:text-primary-50 active:text-primary-700"
                href="/register"
                >Register</Link
            >
            <Link
                as="button"
                v-if="user"
                method="post"
                class="text-primary-500 hover:text-primary-50 active:text-primary-700"
                href="/logout"
                >Logout</Link
            >
        </div>
    </nav>
</template>

<script setup>
import ToggleTheme from "../Components/ToggleTheme.vue";
import { computed } from "vue";
import { usePage } from "@inertiajs/inertia-vue3";

const user = computed(() => usePage().props.value.auth.user);
</script>
