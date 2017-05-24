.class Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$1;
.super Ljava/lang/Object;
.source "DetailsAddressResolver.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->resolveAddress([DLcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$AddressResolvingListener;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/lenovo/scg/gallery3d/util/FutureListener",
        "<",
        "Landroid/location/Address;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/lenovo/scg/gallery3d/util/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/scg/gallery3d/util/Future",
            "<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "future":Lcom/lenovo/scg/gallery3d/util/Future;, "Lcom/lenovo/scg/gallery3d/util/Future<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->mAddressLookupJob:Lcom/lenovo/scg/gallery3d/util/Future;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->access$102(Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;Lcom/lenovo/scg/gallery3d/util/Future;)Lcom/lenovo/scg/gallery3d/util/Future;

    .line 75
    invoke-interface {p1}, Lcom/lenovo/scg/gallery3d/util/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$1;->this$0:Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;

    # getter for: Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;->access$300(Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$1$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$1$1;-><init>(Lcom/lenovo/scg/gallery3d/ui/DetailsAddressResolver$1;Lcom/lenovo/scg/gallery3d/util/Future;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 84
    :cond_0
    return-void
.end method
