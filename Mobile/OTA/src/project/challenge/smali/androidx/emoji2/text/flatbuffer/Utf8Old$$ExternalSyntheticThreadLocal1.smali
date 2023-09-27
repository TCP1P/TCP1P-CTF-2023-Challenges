.class public final synthetic Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticThreadLocal1;
.super Ljava/lang/ThreadLocal;
.source "D8$$SyntheticClass"


# annotations
.annotation build Lcom/android/tools/r8/annotations/SynthesizedClassV2;
    kind = 0x15
    versionHash = "e694eb0f451250a160502658293f575d5b1df0579ba735ad0f54ee9a7cac42a1"
.end annotation


# instance fields
.field public final synthetic initialValueSupplier:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticThreadLocal1;->initialValueSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/emoji2/text/flatbuffer/Utf8Old$$ExternalSyntheticThreadLocal1;->initialValueSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
