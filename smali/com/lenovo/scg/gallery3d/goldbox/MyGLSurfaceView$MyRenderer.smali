.class Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;
.super Ljava/lang/Object;
.source "MyGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRenderer"
.end annotation


# instance fields
.field private js:F

.field private mDebugFpsStart:J

.field private mDebugFrames:I

.field private mG3dContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

.field private mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

.field private mG3dImage2:Lcom/lenovo/scg/common/le3d/Le3dImage;

.field private mG3dImage3:Lcom/lenovo/scg/common/le3d/Le3dImage;

.field private step:F

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)V
    .locals 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFpsStart:J

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFrames:I

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    .line 174
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    return-void
.end method

.method private createContainer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 198
    new-instance v2, Lcom/lenovo/scg/common/le3d/Le3dContainer;

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dContainer;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    .line 199
    const-string v2, "/mnt/sdcard/Pictures/test.jpg"

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dImage;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 202
    .local v1, "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    invoke-virtual {v1, v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 203
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$100(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$200(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setSize(FF)V

    .line 204
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setCenter(I)V

    .line 207
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 209
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dImage;

    .end local v1    # "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    .line 210
    .restart local v1    # "image":Lcom/lenovo/scg/common/le3d/Le3dImage;
    invoke-virtual {v1, v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 211
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$100(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$200(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setSize(FF)V

    .line 212
    invoke-virtual {v1, v4}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setCenter(I)V

    .line 215
    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v2, v1}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->addView(Lcom/lenovo/scg/common/le3d/Le3dView;)V

    .line 217
    return-void
.end method

.method private createImage()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 128
    const-string v1, "/mnt/sdcard/Pictures/test.jpg"

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dImage;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/scg/common/le3d/Le3dImage;-><init>(Lcom/lenovo/scg/common/le3d/Le3dContext;)V

    iput-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    .line 130
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v1, v0, v4}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 131
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mWidth:I
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$100(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mHeight:I
    invoke-static {v3}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$200(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setSize(FF)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v1, v4}, Lcom/lenovo/scg/common/le3d/Le3dImage;->setCenter(I)V

    .line 159
    return-void
.end method

.method private drawContainer()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dContainer:Lcom/lenovo/scg/common/le3d/Le3dContainer;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContainer;->draw()V

    .line 221
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->moveImage()V

    .line 222
    return-void
.end method

.method private drawImage()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mG3dImage:Lcom/lenovo/scg/common/le3d/Le3dImage;

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dImage;->draw()V

    .line 169
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->moveImage()V

    .line 170
    return-void
.end method

.method private moveImage()V
    .locals 3

    .prologue
    .line 177
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    const/high16 v1, 0x43b40000    # 360.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 178
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    .line 183
    :goto_0
    const-string/jumbo v0, "wwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " step = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 180
    :cond_0
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    neg-float v0, v0

    :goto_1
    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    .line 181
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    iget v1, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->js:F

    goto :goto_0

    .line 180
    :cond_1
    iget v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->step:F

    goto :goto_1
.end method

.method private printDebugInfo()V
    .locals 6

    .prologue
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, "end":J
    iget v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFrames:I

    .line 114
    iget-wide v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFpsStart:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 115
    const-string/jumbo v2, "wwf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FPS : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFrames:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFrames:I

    .line 117
    iput-wide v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->mDebugFpsStart:J

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->printDebugInfo()V

    .line 79
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/scg/common/le3d/Le3dContext;->prepareDraw()V

    .line 88
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->drawContainer()V

    .line 89
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 93
    const-string/jumbo v0, "wwf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSurfaceChanged width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$000(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/lenovo/scg/common/le3d/Le3dContext;->setSize(II)V

    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # setter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mWidth:I
    invoke-static {v0, p2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$102(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;I)I

    .line 98
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # setter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mHeight:I
    invoke-static {v0, p3}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$202(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;I)I

    .line 100
    invoke-direct {p0}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->createContainer()V

    .line 101
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 105
    const-string/jumbo v0, "wwf"

    const-string/jumbo v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    new-instance v1, Lcom/lenovo/scg/common/le3d/Le3dContext;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView$MyRenderer;->this$0:Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;

    # getter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$300(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;)Landroid/content/Context;

    move-result-object v2

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11;

    .end local p1    # "gl":Ljavax/microedition/khronos/opengles/GL10;
    invoke-direct {v1, v2, p1}, Lcom/lenovo/scg/common/le3d/Le3dContext;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL11;)V

    # setter for: Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->mG3dContext:Lcom/lenovo/scg/common/le3d/Le3dContext;
    invoke-static {v0, v1}, Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;->access$002(Lcom/lenovo/scg/gallery3d/goldbox/MyGLSurfaceView;Lcom/lenovo/scg/common/le3d/Le3dContext;)Lcom/lenovo/scg/common/le3d/Le3dContext;

    .line 109
    return-void
.end method
