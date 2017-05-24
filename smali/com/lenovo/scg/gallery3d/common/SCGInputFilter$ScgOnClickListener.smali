.class Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;
.super Ljava/lang/Object;
.source "SCGInputFilter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScgOnClickListener"
.end annotation


# instance fields
.field private mDelayTime:I

.field private mListener:Landroid/view/View$OnClickListener;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;


# direct methods
.method public constructor <init>(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;I)V
    .locals 1
    .param p2, "nDelayTime"    # I

    .prologue
    const/4 v0, 0x0

    .line 370
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mView:Landroid/view/View;

    .line 366
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mListener:Landroid/view/View$OnClickListener;

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mDelayTime:I

    .line 371
    iput p2, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mDelayTime:I

    .line 372
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 377
    const-string v1, "ScgOnClickListener"

    iget v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mDelayTime:I

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->lockInput(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    :goto_0
    return-void

    .line 381
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    :goto_1
    new-array v1, v5, [Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->unlockInput([Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "ScgOnClickListener error : %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLogEx(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 385
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public setOnClickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mView:Landroid/view/View;

    .line 393
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$ScgOnClickListener;->mListener:Landroid/view/View$OnClickListener;

    .line 394
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    return-void
.end method
