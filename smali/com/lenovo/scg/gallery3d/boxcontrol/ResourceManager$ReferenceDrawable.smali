.class Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;
.super Ljava/lang/ref/SoftReference;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;
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
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "r"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p4, "q":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<-Landroid/graphics/drawable/Drawable;>;"
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;->this$0:Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager;

    .line 66
    invoke-direct {p0, p3, p4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 68
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;->uri:Landroid/net/Uri;

    .line 69
    return-void
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/boxcontrol/ResourceManager$ReferenceDrawable;->uri:Landroid/net/Uri;

    return-object v0
.end method
