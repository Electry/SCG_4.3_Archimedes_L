.class Lcom/lenovo/scg/camera/effect/CameraOverlayView$1;
.super Ljava/lang/Object;
.source "CameraOverlayView.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/ui/GLView$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/camera/effect/CameraOverlayView;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/effect/CameraOverlayView;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/lenovo/scg/camera/effect/CameraOverlayView$1;->this$0:Lcom/lenovo/scg/camera/effect/CameraOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/lenovo/scg/gallery3d/ui/GLView;)V
    .locals 2
    .param p1, "v"    # Lcom/lenovo/scg/gallery3d/ui/GLView;

    .prologue
    .line 120
    const-string/jumbo v0, "tyl"

    const-string/jumbo v1, "on click image view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method
