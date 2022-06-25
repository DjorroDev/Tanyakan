<template>
    <h3 class="text-xl">
        {{ quest.title }}
    </h3>
    <p>{{ quest.body }}?</p>
</template>

<script setup>
defineProps({
    quest: Object,
});
</script>
