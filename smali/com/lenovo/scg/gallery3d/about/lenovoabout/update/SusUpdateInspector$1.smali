.class Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$1;
.super Ljava/lang/Object;
.source "SusUpdateInspector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->startCheckingUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    iget-object v0, v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->mUpdatePrefHelper:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/UpdatePrefHelper;->setLastCheckUpdateTime(J)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$1;->this$0:Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;->onStart()V

    .line 116
    return-void
.end method
