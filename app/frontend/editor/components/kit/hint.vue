<template>
  <div class="text-gray-600 text-sm">{{ text }}</div>
</template>

<script>
export default {
  name: 'Hint',
  props: {
    text: { type: String, default: 'Hint goes here' },
  }
}
</script>