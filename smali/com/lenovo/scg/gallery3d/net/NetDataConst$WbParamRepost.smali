.class public Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;
.super Ljava/lang/Object;
.source "NetDataConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/net/NetDataConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WbParamRepost"
.end annotation


# instance fields
.field public sRepostFile:Ljava/lang/String;

.field public sRepostParam:Ljava/lang/String;

.field public sRepostUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostFile:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostUrl:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostParam:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostFile:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sUrl"    # Ljava/lang/String;
    .param p2, "sParam"    # Ljava/lang/String;
    .param p3, "sFile"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostFile:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostUrl:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostParam:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/lenovo/scg/gallery3d/net/NetDataConst$WbParamRepost;->sRepostFile:Ljava/lang/String;

    .line 128
    return-void
.end method
