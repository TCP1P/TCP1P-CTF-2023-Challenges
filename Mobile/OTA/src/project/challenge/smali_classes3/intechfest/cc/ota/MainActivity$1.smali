.class Lintechfest/cc/ota/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lintechfest/cc/ota/MainActivity;->checkForUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lintechfest/cc/ota/MainActivity;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$pDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lintechfest/cc/ota/MainActivity;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lintechfest/cc/ota/MainActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 140
    iput-object p1, p0, Lintechfest/cc/ota/MainActivity$1;->this$0:Lintechfest/cc/ota/MainActivity;

    iput-object p2, p0, Lintechfest/cc/ota/MainActivity$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lintechfest/cc/ota/MainActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onFailure$0(Landroid/app/ProgressDialog;Ljava/io/IOException;)V
    .locals 2
    .param p0, "pDialog"    # Landroid/app/ProgressDialog;
    .param p1, "e"    # Ljava/io/IOException;

    .line 144
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 145
    const-string v0, "Error"

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lintechfest/cc/ota/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method static synthetic lambda$onResponse$1(Landroid/app/ProgressDialog;Lokhttp3/Response;)V
    .locals 2
    .param p0, "pDialog"    # Landroid/app/ProgressDialog;
    .param p1, "response"    # Lokhttp3/Response;

    .line 153
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 154
    const-string v0, "Error"

    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lintechfest/cc/ota/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method


# virtual methods
.method synthetic lambda$onResponse$2$intechfest-cc-ota-MainActivity$1(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p1, "pDialog"    # Landroid/app/ProgressDialog;

    .line 160
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 161
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$1;->this$0:Lintechfest/cc/ota/MainActivity;

    invoke-virtual {v0}, Lintechfest/cc/ota/MainActivity;->loadDex()V

    .line 162
    return-void
.end method

.method synthetic lambda$onResponse$3$intechfest-cc-ota-MainActivity$1(Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "pDialog"    # Landroid/app/ProgressDialog;
    .param p2, "res"    # Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 166
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$1;->this$0:Lintechfest/cc/ota/MainActivity;

    invoke-virtual {v0, p2}, Lintechfest/cc/ota/MainActivity;->downloadUpdate(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$1;->this$0:Lintechfest/cc/ota/MainActivity;

    invoke-static {v0}, Lintechfest/cc/ota/MainActivity;->access$000(Lintechfest/cc/ota/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "version"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .line 143
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p2}, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda0;-><init>(Landroid/app/ProgressDialog;Ljava/io/IOException;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p2}, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda1;-><init>(Landroid/app/ProgressDialog;Lokhttp3/Response;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "res":Ljava/lang/String;
    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$1;->this$0:Lintechfest/cc/ota/MainActivity;

    invoke-static {v1}, Lintechfest/cc/ota/MainActivity;->access$000(Lintechfest/cc/ota/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "version"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lintechfest/cc/ota/MainActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v3, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v2}, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda2;-><init>(Lintechfest/cc/ota/MainActivity$1;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lintechfest/cc/ota/MainActivity$1;->val$pDialog:Landroid/app/ProgressDialog;

    new-instance v3, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v0}, Lintechfest/cc/ota/MainActivity$1$$ExternalSyntheticLambda3;-><init>(Lintechfest/cc/ota/MainActivity$1;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .end local v0    # "res":Ljava/lang/String;
    :goto_0
    return-void
.end method
