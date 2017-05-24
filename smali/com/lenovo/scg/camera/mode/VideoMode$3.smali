.class Lcom/lenovo/scg/camera/mode/VideoMode$3;
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
    .line 2173
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$3;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2177
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$3;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    const-string v1, "Media Server Died!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2179
    return-void
.end method
