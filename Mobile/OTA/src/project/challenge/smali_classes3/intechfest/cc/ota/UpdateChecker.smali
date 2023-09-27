.class public Lintechfest/cc/ota/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"


# instance fields
.field private context:Landroid/content/Context;

.field private error:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lintechfest/cc/ota/UpdateChecker;->context:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$002(Lintechfest/cc/ota/UpdateChecker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lintechfest/cc/ota/UpdateChecker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lintechfest/cc/ota/UpdateChecker;->error:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lintechfest/cc/ota/UpdateChecker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lintechfest/cc/ota/UpdateChecker;

    .line 21
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lintechfest/cc/ota/UpdateChecker;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lintechfest/cc/ota/UpdateChecker;

    .line 21
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lintechfest/cc/ota/UpdateChecker;I)V
    .locals 0
    .param p0, "x0"    # Lintechfest/cc/ota/UpdateChecker;
    .param p1, "x1"    # I

    .line 21
    invoke-direct {p0, p1}, Lintechfest/cc/ota/UpdateChecker;->updateProgress(I)V

    return-void
.end method

.method static synthetic access$400(Lintechfest/cc/ota/UpdateChecker;)V
    .locals 0
    .param p0, "x0"    # Lintechfest/cc/ota/UpdateChecker;

    .line 21
    invoke-direct {p0}, Lintechfest/cc/ota/UpdateChecker;->showErrorDialog()V

    return-void
.end method

.method static synthetic lambda$showErrorDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 97
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    return-void
.end method

.method private showErrorDialog()V
    .locals 3

    .line 92
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lintechfest/cc/ota/UpdateChecker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 94
    const-string v1, "Error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 95
    iget-object v1, p0, Lintechfest/cc/ota/UpdateChecker;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 96
    new-instance v1, Lintechfest/cc/ota/UpdateChecker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lintechfest/cc/ota/UpdateChecker$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 101
    iget-object v1, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 102
    return-void
.end method

.method private updateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 88
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 89
    return-void
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 33
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lintechfest/cc/ota/UpdateChecker;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    .line 34
    const-string v1, "Downloading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 37
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 38
    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 41
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lokhttp3/OkHttpClient;

    invoke-direct {v2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 44
    .local v2, "client":Lokhttp3/OkHttpClient;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 45
    invoke-virtual {v3, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 48
    .local v3, "request":Lokhttp3/Request;
    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v5, Lintechfest/cc/ota/UpdateChecker$1;

    invoke-direct {v5, p0, v1, p2}, Lintechfest/cc/ota/UpdateChecker$1;-><init>(Lintechfest/cc/ota/UpdateChecker;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 85
    return-void
.end method
