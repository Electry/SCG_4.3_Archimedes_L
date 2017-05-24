.class Lcn/jingling/lib/camera/TouchCap$1;
.super Ljava/lang/Object;
.source "TouchCap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/camera/TouchCap;->takePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/camera/TouchCap;


# direct methods
.method constructor <init>(Lcn/jingling/lib/camera/TouchCap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/camera/TouchCap$1;->this$0:Lcn/jingling/lib/camera/TouchCap;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap$1;->this$0:Lcn/jingling/lib/camera/TouchCap;

    # getter for: Lcn/jingling/lib/camera/TouchCap;->mOnTouchCapListener:Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;
    invoke-static {v0}, Lcn/jingling/lib/camera/TouchCap;->access$2(Lcn/jingling/lib/camera/TouchCap;)Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The OnTouchCapListener is null.Please check whether you have set it."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcn/jingling/lib/camera/TouchCap$1;->this$0:Lcn/jingling/lib/camera/TouchCap;

    # getter for: Lcn/jingling/lib/camera/TouchCap;->mOnTouchCapListener:Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;
    invoke-static {v0}, Lcn/jingling/lib/camera/TouchCap;->access$2(Lcn/jingling/lib/camera/TouchCap;)Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/jingling/lib/camera/TouchCap$OnTouchCapListener;->onTouchCapturing()V

    .line 54
    return-void
.end method
