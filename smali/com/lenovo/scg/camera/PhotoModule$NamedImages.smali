.class Lcom/lenovo/scg/camera/PhotoModule$NamedImages;
.super Ljava/lang/Object;
.source "PhotoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/PhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedImages"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;
    }
.end annotation


# instance fields
.field private mNamedEntity:Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    .line 2971
    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    .prologue
    .line 2993
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 2994
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

    iget-wide v0, v0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 2981
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2982
    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

    .line 2988
    :goto_0
    return-object v0

    .line 2985
    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

    iput-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

    .line 2986
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2988
    iget-object v0, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mNamedEntity:Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

    iget-object v0, v0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    goto :goto_0
.end method

.method public nameNewImage(Landroid/content/ContentResolver;J)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "date"    # J

    .prologue
    .line 2974
    new-instance v0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;-><init>(Lcom/lenovo/scg/camera/PhotoModule$1;)V

    .line 2975
    .local v0, "r":Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;
    invoke-static {p2, p3}, Lcom/lenovo/scg/camera/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    .line 2976
    iput-wide p2, v0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    .line 2977
    iget-object v1, p0, Lcom/lenovo/scg/camera/PhotoModule$NamedImages;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2978
    return-void
.end method
