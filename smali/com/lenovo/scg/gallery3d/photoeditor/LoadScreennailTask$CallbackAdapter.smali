.class public abstract Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$CallbackAdapter;
.super Ljava/lang/Object;
.source "LoadScreennailTask.java"

# interfaces
.implements Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/photoeditor/LoadScreennailTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "CallbackAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onLoadFailed()V
.end method
