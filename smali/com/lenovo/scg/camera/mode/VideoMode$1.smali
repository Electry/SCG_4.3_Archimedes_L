.class Lcom/lenovo/scg/camera/mode/VideoMode$1;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/lenovo/scg/camera/MediaSaveService$OnMediaSavedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/VideoMode;
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
    .line 206
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/VideoMode$1;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaSaved(Landroid/net/Uri;Lcom/lenovo/scg/camera/Thumbnail;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "thumbnail"    # Lcom/lenovo/scg/camera/Thumbnail;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/VideoMode$1;->this$0:Lcom/lenovo/scg/camera/mode/VideoMode;

    iget-object v0, v0, Lcom/lenovo/scg/camera/mode/VideoMode;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/lenovo/scg/camera/CameraUtil;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 213
    :cond_0
    return-void
.end method
