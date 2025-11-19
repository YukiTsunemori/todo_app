<script>
  import axios from 'axios';
  export default {
    data() {
      return {
        name: '',
        user_id: '',
        deadline_at: ''
      }
    },
    methods: {
      createTask() {
        console.log(this.name, this.user_id, this.deadline_at);
        debugger;
        axios
          .post('http://localhost:3000/tasks', {
            name: this.name,
            user_id: this.user_id,
            deadline_at: this.deadline_at,
          })
          .then(() => {
            this.name = ''
            this.user_id = '',
            this.deadline_at = '' //リクエストが成功したら、フォーム(name)をからにする
          })
          .catch((error) => {
            console.error(error)
          })
      },
    }
  }
  </script>
  <template>
    <div>
      <h1>Todoアプリ</h1>
      <form @submit="createTask">
        <div>
          <input type="text" v-model="name" placeholder="新しいタスクを入力..." />
        </div>
        <div>
          <input v-model="user_id" />
        </div>
        <div>
          <label>
            期限を入力してください。
            <input type="date" v-model="deadline_at" :min="new Date().toISOString().split('T')[0]" />
          </label>
        </div>
        <button>追加</button>
      </form>
    </div>
  </template>
