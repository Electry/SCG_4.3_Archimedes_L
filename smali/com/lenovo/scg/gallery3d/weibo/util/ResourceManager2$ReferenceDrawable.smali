.class Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;
.super Ljava/lang/ref/SoftReference;
.source "ResourceManager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReferenceDrawable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "r"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p4, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;->this$0:Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2;

    .line 52
    invoke-direct {p0, p3, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 54
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;->url:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/weibo/util/ResourceManager2$ReferenceDrawable;->url:Ljava/lang/String;

    return-object v0
.end method
