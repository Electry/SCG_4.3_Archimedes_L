.class Lcn/jingling/lib/camera/DelayCap$1;
.super Ljava/lang/Object;
.source "DelayCap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/DelayCap;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/DelayCap;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/DelayCap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/DelayCap$1;->this$0:Lcn/jingling/lib/camera/DelayCap;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcn/jingling/lib/camera/DelayCap$1;->this$0:Lcn/jingling/lib/camera/DelayCap;

    # getter for: Lcn/jingling/lib/camera/DelayCap;->mListener:Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;
    invoke-static {v0}, Lcn/jingling/lib/camera/DelayCap;->access$0(Lcn/jingling/lib/camera/DelayCap;)Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The OnDelayCapListener is null.Please check whether you have set it."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/camera/DelayCap$1;->this$0:Lcn/jingling/lib/camera/DelayCap;

    # getter for: Lcn/jingling/lib/camera/DelayCap;->mListener:Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;
    invoke-static {v0}, Lcn/jingling/lib/camera/DelayCap;->access$0(Lcn/jingling/lib/camera/DelayCap;)Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/jingling/lib/camera/DelayCap$OnDelayCapListener;->onDelayCapturing()V

    .line 59
    return-void
.end method
