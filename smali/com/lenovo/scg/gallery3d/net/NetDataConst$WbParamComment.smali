.class public Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamComment;
.super Ljava/lang/Object;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WbParamComment"
.end annotation


# instance fields
.field public sCommentUrl:Ljava/lang/String;

.field public sCommnetParam:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamComment;->sCommentUrl:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamComment;->sCommnetParam:Ljava/lang/String;

    .line 109
    return-void
.end method
