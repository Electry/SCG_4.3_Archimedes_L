.class abstract Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$GLViewRunnable;
.super Ljava/lang/Object;
.source "PanoramaRealTimePreviewView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "GLViewRunnable"
.end annotation


# instance fields
.field public mView:Lcom/lenovo/scg/gallery3d/ui/GLView;

.field final synthetic this$0:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 0
    .param p2, "v"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$GLViewRunnable;->this$0:Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p2, p0, Lcom/lenovo/scg/camera/mode/ui/PanoramaRealTimePreviewView$GLViewRunnable;->mView:Lcom/lenovo/scg/gallery3d/ui/GLView;

    .line 215
    return-void
.end method
