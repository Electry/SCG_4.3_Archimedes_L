.class public interface abstract Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel$OnModelChangedListener;
.super Ljava/lang/Object;
.source "CloudBaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/cloudalbum/model/CloudBaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnModelChangedListener"
.end annotation


# virtual methods
.method public abstract onDeleteFinished(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;I)V"
        }
    .end annotation
.end method

.method public abstract onError(Landroid/os/Bundle;)V
.end method

.method public abstract onGetOutsideUrlFinished(Ljava/lang/String;)V
.end method

.method public abstract onLoadingDataFinished(Ljava/util/List;IIZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;IIZ)V"
        }
    .end annotation
.end method

.method public abstract onRenameFinished(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract onShowSyncLoading(Z)V
.end method
