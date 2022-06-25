<template>
    <section class="px-4 py-6 sm:px-0">
        <h1 class="mb-1 text-3xl"><slot name="title" /></h1>
        <div
            class="h-min-content rounded-lg border-2 border-slate-500 bg-slate-100 p-5 shadow dark:bg-base-800"
        >
            <slot />
        </div>
    </section>
</template>
