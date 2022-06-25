<template>
    <Card class="mx-auto w-1/2">
        <template #default>
            <h3 class="text-center text-4xl font-bold">Login</h3>
            <FlashMessage type="error">
                Email atau Password tidak sama
            </FlashMessage>
            <form
                @submit.prevent="submit"
                class="4/5 mx-auto mt-8 space-y-4"
                action="#"
                method="POST"
            >
                <input type="hidden" name="remember" value="true" />
                <div class="-space-y-px rounded-md shadow-sm">
                    <div>
                        <label for="email-address" class="sr-only"
                            >Email address</label
                        >
                        <input
                            v-model="form.email"
                            id="email-address"
                            name="email"
                            type="email"
                            autocomplete="email"
                            required=""
                            class="relative block w-full appearance-none rounded-none rounded-t-md border border-gray-300 px-3 py-2 text-gray-900 placeholder-gray-500 focus:z-10 focus:border-primary-500 focus:outline-none focus:ring-primary-500 dark:border-slate-500 dark:bg-base-700 dark:text-white sm:text-sm"
                            placeholder="Email address"
                        />
                    </div>
                    <div>
                        <label for="password" class="sr-only">Password</label>
                        <input
                            v-model="form.password"
                            id="password"
                            name="password"
                            type="password"
                            autocomplete="current-password"
                            required=""
                            class="relative block w-full appearance-none rounded-none rounded-b-md border border-gray-300 px-3 py-2 text-gray-900 placeholder-gray-500 focus:z-10 focus:border-primary-500 focus:outline-none focus:ring-primary-500 dark:border-slate-500 dark:bg-base-700 dark:text-white sm:text-sm"
                            placeholder="Password"
                        />
                    </div>
                </div>

                <div class="flex items-center justify-start">
                    <div class="text-sm">
                        Belum punya akun?
                        <Link
                            href="/register"
                            method="get"
                            class="font-medium text-primary-600 hover:text-primary-500"
                        >
                            Regristasi di sini!
                        </Link>
                    </div>
                </div>

                <div>
                    <button
                        type="submit"
                        class="group relative flex w-full justify-center rounded-md border border-transparent bg-primary-600 py-2 px-4 text-sm font-medium text-white hover:bg-primary-700 focus:outline-none focus:ring-2 focus:ring-primary-500 focus:ring-offset-2"
                    >
                        Login
                    </button>
                </div>
            </form>
        </template>
    </Card>
</template>

<script setup>
import { useForm } from "@inertiajs/inertia-vue3";
import Card from "../../Components/Card.vue";
import FlashMessage from "../../Components/FlashMessage.vue";

const form = useForm({
    email: null,
    password: null,
});

let submit = () => {
    form.post("/login", form);
};
</script>
