.class Lcom/lenovo/scg/camera/mode/VideoMode$2;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/VideoMode;->onStartVideoError(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/VideoMode;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/VideoMode;)V
    .locals 0

    .prologue
    .line 2160
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$2;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$2;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    const v1, 0x7f0f019e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2167
    return-void
.end method
