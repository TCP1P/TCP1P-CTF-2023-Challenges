.class public final synthetic Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lintechfest/cc/ota/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/Handler;

.field public final synthetic f$3:Landroid/app/ProgressDialog;


# direct methods
.method public synthetic constructor <init>(Lintechfest/cc/ota/MainActivity;Ljava/lang/String;Landroid/os/Handler;Landroid/app/ProgressDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$0:Lintechfest/cc/ota/MainActivity;

    iput-object p2, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iput-object p4, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$3:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$0:Lintechfest/cc/ota/MainActivity;

    iget-object v1, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$2:Landroid/os/Handler;

    iget-object v3, p0, Lintechfest/cc/ota/MainActivity$$ExternalSyntheticLambda1;->f$3:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1, v2, v3}, Lintechfest/cc/ota/MainActivity;->lambda$downloadUpdate$2$intechfest-cc-ota-MainActivity(Ljava/lang/String;Landroid/os/Handler;Landroid/app/ProgressDialog;)V

    return-void
.end method
