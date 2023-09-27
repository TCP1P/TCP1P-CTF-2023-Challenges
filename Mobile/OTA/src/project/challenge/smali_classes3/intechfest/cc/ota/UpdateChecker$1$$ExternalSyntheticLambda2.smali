.class public final synthetic Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lintechfest/cc/ota/UpdateChecker$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lintechfest/cc/ota/UpdateChecker$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda2;->f$0:Lintechfest/cc/ota/UpdateChecker$1;

    iput p2, p0, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda2;->f$0:Lintechfest/cc/ota/UpdateChecker$1;

    iget v1, p0, Lintechfest/cc/ota/UpdateChecker$1$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Lintechfest/cc/ota/UpdateChecker$1;->lambda$onResponse$2$intechfest-cc-ota-UpdateChecker$1(I)V

    return-void
.end method
