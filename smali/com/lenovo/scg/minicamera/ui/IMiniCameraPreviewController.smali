.class public interface abstract Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController;
.super Ljava/lang/Object;
.source "IMiniCameraPreviewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/minicamera/ui/IMiniCameraPreviewController$PreviewScanMode;
    }
.end annotation


# static fields
.field public static final FOCUSING:I = 0x2

.field public static final IDLE:I = 0x1

.field public static final PREVIEW_STOPPED:I


# virtual methods
.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onSurfaceCreated()V
.end method

.method public abstract onSurfaceDestroy()V
.end method

.method public abstract startPreview()V
.end method

.method public abstract startScan()V
.end method

.method public abstract stopPreview()V
.end method
