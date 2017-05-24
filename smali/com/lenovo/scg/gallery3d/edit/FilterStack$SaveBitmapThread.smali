.class Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/edit/FilterStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveBitmapThread"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/edit/FilterStack;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/edit/FilterStack;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;->this$0:Lcom/lenovo/scg/gallery3d/edit/FilterStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;->bitmap:Landroid/graphics/Bitmap;

    .line 158
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;->fileName:Ljava/lang/String;

    .line 159
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 164
    .local v0, "start":J
    new-instance v2, Lcom/lenovo/scg/gallery3d/edit/EditUtils;

    invoke-direct {v2}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;-><init>()V

    .line 165
    .local v2, "utils":Lcom/lenovo/scg/gallery3d/edit/EditUtils;
    iget-object v3, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lenovo/scg/gallery3d/edit/FilterStack$SaveBitmapThread;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/lenovo/scg/gallery3d/edit/EditUtils;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v3, "wwftest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveImage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method
