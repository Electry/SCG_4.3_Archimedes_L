.class public Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;
.super Ljava/lang/Object;
.source "SinaShareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NumberInfo"
.end annotation


# instance fields
.field public next_cursor:I

.field public previous_cursor:I

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

.field public total_number:I


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NumberInfo: next_cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->next_cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previous_cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->previous_cursor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", total_number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$NumberInfo;->total_number:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
