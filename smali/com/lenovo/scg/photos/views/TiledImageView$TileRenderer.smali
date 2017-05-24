.class Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileRenderer"
.end annotation


# instance fields
.field private mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

.field final synthetic this$0:Lcom/lenovo/scg/photos/views/TiledImageView;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/photos/views/TiledImageView;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/lenovo/scg/photos/views/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/scg/photos/views/TiledImageView;Lcom/lenovo/scg/photos/views/TiledImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/scg/photos/views/TiledImageView;
    .param p2, "x1"    # Lcom/lenovo/scg/photos/views/TiledImageView$1;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;-><init>(Lcom/lenovo/scg/photos/views/TiledImageView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 207
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->clearBuffer()V

    .line 208
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/lenovo/scg/photos/views/TiledImageView;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageView;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/lenovo/scg/photos/views/TiledImageView;->access$400(Lcom/lenovo/scg/photos/views/TiledImageView;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/lenovo/scg/photos/views/TiledImageView;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageView;->mRenderers:[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/lenovo/scg/photos/views/TiledImageView;->access$300(Lcom/lenovo/scg/photos/views/TiledImageView;)[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 210
    .local v3, "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    iget-object v6, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    iget v7, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v4, v6, v7}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->setModel(Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;I)V

    .line 211
    iget-object v4, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    iget v6, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->centerX:I

    iget v7, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->centerY:I

    iget v8, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {v4, v6, v7, v8}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->setPosition(IIF)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v3    # "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/lenovo/scg/photos/views/TiledImageView;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageView;->mRenderers:[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/lenovo/scg/photos/views/TiledImageView;->access$300(Lcom/lenovo/scg/photos/views/TiledImageView;)[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 215
    .restart local v3    # "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    iget-object v5, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v4, v5}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->draw(Lcom/lenovo/scg/gallery3d/glrenderer/GLCanvas;)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 213
    .end local v0    # "arr$":[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 217
    .restart local v0    # "arr$":[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 199
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

    invoke-virtual {v4, p2, p3}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;->setSize(II)V

    .line 200
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/lenovo/scg/photos/views/TiledImageView;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageView;->mRenderers:[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/lenovo/scg/photos/views/TiledImageView;->access$300(Lcom/lenovo/scg/photos/views/TiledImageView;)[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 201
    .local v3, "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    invoke-virtual {v4, p2, p3}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->setViewSize(II)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 191
    new-instance v4, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

    invoke-direct {v4}, Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;-><init>()V

    iput-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->mCanvas:Lcom/lenovo/scg/gallery3d/glrenderer/GLES20Canvas;

    .line 192
    iget-object v4, p0, Lcom/lenovo/scg/photos/views/TiledImageView$TileRenderer;->this$0:Lcom/lenovo/scg/photos/views/TiledImageView;

    # getter for: Lcom/lenovo/scg/photos/views/TiledImageView;->mRenderers:[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    invoke-static {v4}, Lcom/lenovo/scg/photos/views/TiledImageView;->access$300(Lcom/lenovo/scg/photos/views/TiledImageView;)[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 193
    .local v3, "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    iget-object v4, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/lenovo/scg/photos/views/TiledImageRenderer;

    iget-object v5, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->source:Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;

    iget v6, v3, Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;->rotation:I

    invoke-virtual {v4, v5, v6}, Lcom/lenovo/scg/photos/views/TiledImageRenderer;->setModel(Lcom/lenovo/scg/photos/views/TiledImageRenderer$TileSource;I)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 195
    .end local v3    # "renderer":Lcom/lenovo/scg/photos/views/TiledImageView$ImageRendererWrapper;
    :cond_0
    return-void
.end method
