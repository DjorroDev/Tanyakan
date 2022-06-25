<template>
    <header>
        <Nav />
    </header>
    <main class="h-screen pt-10 dark:text-slate-100">
        <section class="container mx-auto max-w-4xl">
            <slot />
        </section>
    </main>
</template>

<script setup>
import Nav from "../Components/Nav.vue";
</script>
