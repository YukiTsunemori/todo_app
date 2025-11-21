<template>
  <div id="app">
    <!-- <router-view /> -->
    <TaskForm />
    <TaskIndex />
  </div>
</template>

<script>
import TaskForm from '@/components/TaskForm.vue'
import TaskIndex from '@/components/TaskIndex.vue'
export default {
  name: 'App',
  components: {
    TaskForm,
    TaskIndex
  }
}
</script>
