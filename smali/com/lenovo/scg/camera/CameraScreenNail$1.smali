.class Lcom/lenovo/scg/camera/CameraScreenNail$1;
.super Ljava/lang/Object;
.source "CameraScreenNail.java"

# interfaces
.implements Lcom/lenovo/scg/camera/CameraScreenNail$DrawClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraScreenNail;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/CameraScreenNail;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraScreenNail$1;->this$0:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyToTexture(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;II)Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .locals 1
    .param p1, "c"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "texture"    # Lcom/lenovo/scg/gallery3d/glrenderer/RawTexture;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    .locals 10
    .param p1, "canvas"    # Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail$1;->this$0:Lcom/lenovo/scg/camera/CameraScreenNail;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/lenovo/scg/gallery3d/ui/SurfaceTextureScreenNail;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V
    invoke-static/range {v0 .. v5}, Lcom/lenovo/scg/camera/CameraScreenNail;->access$001(Lcom/lenovo/scg/camera/CameraScreenNail;Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 127
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getInstance()Lcom/lenovo/scg/camera/smartengine/SmartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/smartengine/SmartEngine;->getSmartIVC()Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/scg/camera/smartengine/SmartPluginIVC;->onDraw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;IIII)[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;

    move-result-object v8

    .line 130
    .local v8, "vQrcp":[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    if-eqz v8, :cond_0

    .line 132
    invoke-static {v8}, Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;->QrCoordPositionArrayToBoundingRc([Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;)Landroid/graphics/Rect;

    move-result-object v7

    .line 133
    .local v7, "rcClip":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 134
    .local v9, "w":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 135
    .local v6, "h":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v6, 0x5

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 136
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v1, v6, 0x5

    add-int/2addr v0, v1

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 137
    iget v0, v7, Landroid/graphics/Rect;->left:I

    div-int/lit8 v1, v9, 0xa

    sub-int/2addr v0, v1

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 138
    iget v0, v7, Landroid/graphics/Rect;->right:I

    div-int/lit8 v1, v9, 0xa

    add-int/2addr v0, v1

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 139
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, p4, p5}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 140
    iget-object v0, p0, Lcom/lenovo/scg/camera/CameraScreenNail$1;->this$0:Lcom/lenovo/scg/camera/CameraScreenNail;

    invoke-virtual {v0, v7}, Lcom/lenovo/scg/camera/CameraScreenNail;->setSavePreviewClipRect(Landroid/graphics/Rect;)V

    .line 143
    .end local v6    # "h":I
    .end local v7    # "rcClip":Landroid/graphics/Rect;
    .end local v8    # "vQrcp":[Lcom/lenovo/scg/camera/smartengine/QrCoordPosition;
    .end local v9    # "w":I
    :cond_0
    return-void
.end method

.method public requiresSurfaceTexture()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
