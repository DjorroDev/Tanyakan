<template>
    <Card>
        <template #title>Pertanyaan</template>
        <template #default>
            <h3 class="text-xl">
                {{ quest.title }}
            </h3>
            <p>{{ quest.body }}?</p>
        </template>
    </Card>
    <Card>
        <template #title>Jawaban</template>
        <template #default>
            <h3 class="text-xl">Jawaban dari budi</h3>
            <p>
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia
                illum temporibus accusamus aperiam adipisci error obcaecati,
                iste suscipit dolorem ut. Deserunt aliquam iusto id odio!
                Nostrum repellendus esse sapiente. Eaque.
            </p>
        </template>
    </Card>
</template>

<script setup>
import Card from "../../Components/Card.vue";
defineProps({
    quest: Object,
});
</script>
