.class Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoToLoad"
.end annotation


# instance fields
.field public imageView:Landroid/widget/ImageView;

.field public stypeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .param p2, "u"    # Ljava/lang/String;
    .param p3, "i"    # Landroid/widget/ImageView;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->this$0:Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->url:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->imageView:Landroid/widget/ImageView;

    .line 145
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/materialCenter/download/util/ImageLoader$PhotoToLoad;->stypeName:Ljava/lang/String;

    .line 146
    return-void
.end method
