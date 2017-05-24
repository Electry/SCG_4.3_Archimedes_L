.class public Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareResultObject"
.end annotation


# instance fields
.field public isSuccess:Z

.field public resultMsg:Ljava/lang/String;

.field public sharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;ZLjava/lang/String;)V
    .locals 0
    .param p2, "sharePlatform"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;
    .param p3, "success"    # Z
    .param p4, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->sharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    .line 118
    iput-boolean p3, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->isSuccess:Z

    .line 119
    iput-object p4, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->resultMsg:Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->sharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    invoke-virtual {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->isSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;->resultMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
