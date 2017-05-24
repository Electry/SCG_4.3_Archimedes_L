.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;
.super Ljava/lang/ref/WeakReference;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReferenceDrawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "r"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager;

    .line 65
    invoke-direct {p0, p3, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 67
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;->url:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager$ReferenceDrawable;->url:Ljava/lang/String;

    return-object v0
.end method
