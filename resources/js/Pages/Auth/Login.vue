<template>
    <Card class="w-1/2 mx-auto">
        <template #default>
            <h3 class="text-center text-4xl font-bold">Login</h3>
            <form class="mt-8 space-y-4 4/5 mx-auto" action="#" method="POST">
                <input type="hidden" name="remember" value="true" />
                <div class="rounded-md shadow-sm -space-y-px">
                    <div>
                        <label for="email-address" class="sr-only">Email address</label>
                        <input 
                            id="email-address" 
                            name="email"
                            type="email" 
                            autocomplete="email" 
                            required="" 
                            class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:ring-primary-500 focus:border-primary-500 focus:z-10 sm:text-sm dark:bg-base-700 dark:border-slate-500" 
                            placeholder="Email address"
                        />
                    </div>
                    <div>
                        <label for="password" class="sr-only">Password</label>
                        <input 
                            id="password" 
                            name="password" 
                            type="password" 
                            autocomplete="current-password" 
                            required="" 
                            class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:ring-primary-500 focus:border-primary-500 focus:z-10 sm:text-sm dark:bg-base-700 dark:border-slate-500" 
                            placeholder="Password" 
                            />
                    </div>
                </div>

                <div class="flex items-center justify-start">
                  <div class="text-sm">
                    Belum punya akun?
                    <Link href="/register" class="font-medium text-primary-600 hover:text-primary-500"> Regristasi di sini! </Link>
                  </div>
                </div>

                <div>
                    <button 
                    type="submit" 
                    class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-primary-600 hover:bg-primary-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary-500"
                    >Login
                    </button>
                </div>
            </form>
        </template>
    </Card>
</template>

<script setup>
import Card from "../../Components/Card.vue"
</script>
