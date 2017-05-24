.class Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$1;
.super Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$GLViewRunnable;
.source "PanoramaRealTimePreviewView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;->setVisibilityInGLThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;Lcom/lenovo/scg/gallery3d/ui/GLView;I)V
    .locals 0
    .param p2, "x0"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$1;->this$0:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    iput p3, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$1;->val$visibility:I

    invoke-direct {p0, p1, p2}, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$GLViewRunnable;-><init>(Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;Lcom/lenovo/scg/gallery3d/ui/GLView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$1;->mView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    iget v1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$1;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/lenovo/scg/gallery3d/ui/GLView;->setVisibility(I)V

    .line 226
    return-void
.end method
