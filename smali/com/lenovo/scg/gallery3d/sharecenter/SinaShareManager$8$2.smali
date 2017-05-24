.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8$2;
.super Ljava/lang/Object;
.source "SinaShareManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;)V
    .locals 0

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8$2;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8$2;->this$1:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;

    iget-object v1, v1, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager$8;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    # getter for: Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->mContext:Landroid/app/Activity;
    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->access$400(Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f07e5

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u8054\u60f3\u8d85\u7ea7\u76f8\u673a"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    .local v0, "failinfo":Ljava/lang/String;
    return-void
.end method
