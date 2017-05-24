.class Lcn/jingling/lib/camera/FillLightCap$2;
.super Ljava/lang/Object;
.source "FillLightCap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/FillLightCap;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/FillLightCap;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/FillLightCap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/FillLightCap$2;->this$0:Lcn/jingling/lib/camera/FillLightCap;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap$2;->this$0:Lcn/jingling/lib/camera/FillLightCap;

    # getter for: Lcn/jingling/lib/camera/FillLightCap;->mListener:Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;
    invoke-static {v0}, Lcn/jingling/lib/camera/FillLightCap;->access$1(Lcn/jingling/lib/camera/FillLightCap;)Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The OnFillLightCapListener is null.Please check whether you have set it."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/camera/FillLightCap$2;->this$0:Lcn/jingling/lib/camera/FillLightCap;

    # getter for: Lcn/jingling/lib/camera/FillLightCap;->mListener:Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;
    invoke-static {v0}, Lcn/jingling/lib/camera/FillLightCap;->access$1(Lcn/jingling/lib/camera/FillLightCap;)Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/jingling/lib/camera/FillLightCap$OnFillLightCapListener;->onFillLightCapturing()V

    .line 65
    return-void
.end method
