.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Note;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
.source "Note.java"


# static fields
.field private static final serialVersionUID:J = -0x429fe81958adcbc0L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;-><init>()V

    .line 9
    const-string v0, "NOTES"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Note;->mimetype:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method protected fetchFlagFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 15
    const-string v0, "-1"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Note;->flag:Ljava/lang/String;

    .line 16
    return-void
.end method

.method protected flagToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 12
    return-void
.end method
