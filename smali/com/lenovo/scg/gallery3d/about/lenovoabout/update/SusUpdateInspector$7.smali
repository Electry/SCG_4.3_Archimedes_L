.class synthetic Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$7;
.super Ljava/lang/Object;
.source "SusUpdateInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$lenovo$lps$sus$EventType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lcom/lenovo/lps/sus/EventType;->values()[Lcom/lenovo/lps/sus/EventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$7;->$SwitchMap$com$lenovo$lps$sus$EventType:[I

    :try_start_0
    sget-object v0, Lcom/lenovo/scg/gallery3d/about/lenovoabout/update/SusUpdateInspector$7;->$SwitchMap$com$lenovo$lps$sus$EventType:[I

    sget-object v1, Lcom/lenovo/lps/sus/EventType;->SUS_QUERY_RESP:Lcom/lenovo/lps/sus/EventType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
