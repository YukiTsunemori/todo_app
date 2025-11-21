<script>
import axios from 'axios';

export default {
  data() {
    return {
      tasks: []
    };
  },
  mounted() {
    this.fetchTaskIndex();
  },
  methods: {
    fetchTaskIndex() {
      axios
        .get('http://localhost:3000/tasks')
        .then(response => {
          this.tasks = response.data;
        })
        .catch(error => {
          console.error(error);
        });
    }
  }
};
</script>

<template>
  <div>
    <h1>Todo一覧</h1>
    <ul>
      <li v-for="task in tasks" :key="task.id">
        {{ task.name }} - {{ task.deadline_at }}
      </li>
    </ul>
  </div>
</template>
