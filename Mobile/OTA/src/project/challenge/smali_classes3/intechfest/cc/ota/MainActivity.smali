.class public Lintechfest/cc/ota/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field public static context:Landroid/content/Context;


# instance fields
.field private functionList:Landroid/widget/Spinner;

.field private functions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lintechfest/cc/ota/MainActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lintechfest/cc/ota/MainActivity;

    .line 35
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 94
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lintechfest/cc/ota/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 97
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 100
    return-void
.end method


# virtual methods
.method public checkForUpdate()V
    .locals 4

    .line 124
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lintechfest/cc/ota/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 125
    .local v0, "pDialog":Landroid/app/ProgressDialog;
    const-string v1, "Checking for update..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 129
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 132
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 134
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v0}, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda0;-><init>(Lintechfest/cc/ota/MainActivity;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 176
    return-void
.end method

.method public downloadUpdate(Ljava/lang/String;)V
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .line 179
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lintechfest/cc/ota/MainActivity;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "pDialog":Landroid/app/ProgressDialog;
    const-string v1, "Downloading update..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 182
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 184
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 186
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 187
    .local v1, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, v2, v0}, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;-><init>(Lintechfest/cc/ota/MainActivity;Ljava/lang/String;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method synthetic lambda$checkForUpdate$1$intechfest-cc-ota-MainActivity(Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "pDialog"    # Landroid/app/ProgressDialog;

    .line 135
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 136
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 137
    const-string v2, "http://ota-mobile.intechfest.cc/getVersion.php"

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 140
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lintechfest/cc/ota/MainActivity$1;

    invoke-direct {v3, p0, p1, p2}, Lintechfest/cc/ota/MainActivity$1;-><init>(Lintechfest/cc/ota/MainActivity;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 175
    return-void
.end method

.method synthetic lambda$downloadUpdate$2$intechfest-cc-ota-MainActivity(Ljava/lang/String;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 4
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "pDialog"    # Landroid/app/ProgressDialog;

    .line 190
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 191
    .local v0, "client":Lokhttp3/OkHttpClient;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://ota-mobile.intechfest.cc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/update.dex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 195
    .local v1, "request":Lokhttp3/Request;
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lintechfest/cc/ota/MainActivity$2;

    invoke-direct {v3, p0, p2, p3}, Lintechfest/cc/ota/MainActivity$2;-><init>(Lintechfest/cc/ota/MainActivity;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 247
    return-void
.end method

.method synthetic lambda$onCreate$0$intechfest-cc-ota-MainActivity(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 70
    :try_start_0
    iget-object v0, p0, Lintechfest/cc/ota/MainActivity;->functions:Ljava/util/ArrayList;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity;->functionList:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 71
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "execute"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public loadDex()V
    .locals 9

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lintechfest/cc/ota/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "update.dex"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .local v0, "dexPath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    const-string v1, "Error"

    const-string v2, "Update file not found!"

    invoke-static {v1, v2}, Lintechfest/cc/ota/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void

    .line 109
    :cond_0
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lintechfest/cc/ota/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lintechfest/cc/ota/MainActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 111
    .local v1, "dexClassLoader":Ldalvik/system/DexClassLoader;
    :try_start_0
    const-string v2, "intechfest.cc.ota.EntryPoint"

    invoke-virtual {v1, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 112
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "functions"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 113
    .local v3, "newFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    iget-object v4, p0, Lintechfest/cc/ota/MainActivity;->functions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    .line 115
    .local v6, "newFunction":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v7, p0, Lintechfest/cc/ota/MainActivity;->functionList:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    check-cast v7, Landroid/widget/ArrayAdapter;

    .line 116
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const-string v8, "NAME"

    invoke-virtual {v6, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v6    # "newFunction":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    goto :goto_0

    .line 120
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "newFunctions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Class<*>;>;"
    :cond_1
    goto :goto_1

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lintechfest/cc/ota/R$layout;->activity_main:I

    invoke-virtual {p0, v0}, Lintechfest/cc/ota/MainActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lintechfest/cc/ota/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lintechfest/cc/ota/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lintechfest/cc/ota/MainActivity;->prefs:Landroid/content/SharedPreferences;

    .line 52
    const-string v0, "flag{fake_flag_dont_submit}"

    .line 55
    .local v0, "flag":Ljava/lang/String;
    :try_start_0
    const-string v2, "flag.txt"

    invoke-virtual {p0, v2, v1}, Lintechfest/cc/ota/MainActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 56
    .local v1, "outputStream":Ljava/io/OutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 57
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    goto :goto_0

    .line 58
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    sput-object p0, Lintechfest/cc/ota/MainActivity;->context:Landroid/content/Context;

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lintechfest/cc/ota/MainActivity;->functions:Ljava/util/ArrayList;

    .line 65
    const-class v2, Lintechfest/cc/ota/FuncRandomString;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget v1, Lintechfest/cc/ota/R$id;->executeButton:I

    invoke-virtual {p0, v1}, Lintechfest/cc/ota/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 68
    .local v1, "executeButton":Landroid/widget/Button;
    new-instance v2, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda2;-><init>(Lintechfest/cc/ota/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    sget v2, Lintechfest/cc/ota/R$id;->functionList:I

    invoke-virtual {p0, v2}, Lintechfest/cc/ota/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lintechfest/cc/ota/MainActivity;->functionList:Landroid/widget/Spinner;

    .line 78
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, p0, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 79
    .local v2, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v3, p0, Lintechfest/cc/ota/MainActivity;->functions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 81
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v5, "NAME"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    goto :goto_2

    .line 82
    :catch_1
    move-exception v5

    .line 83
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "ex":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 87
    :cond_0
    const v3, 0x1090009

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 88
    iget-object v3, p0, Lintechfest/cc/ota/MainActivity;->functionList:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 90
    invoke-virtual {p0}, Lintechfest/cc/ota/MainActivity;->checkForUpdate()V

    .line 91
    return-void
.end method
