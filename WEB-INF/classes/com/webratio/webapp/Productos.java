package com.webratio.webapp;

public class Productos implements java.io.Serializable {
    /** Serial version identifier. */
    private static final long serialVersionUID = 1L;

    private java.lang.Integer _oid;

    private java.lang.String _nombre;

    private java.lang.String _descripcion;

    private java.math.BigDecimal _precio;

    private float _searchScore;

    public java.lang.Integer getOid() {
        return _oid;
    }

    public void setOid(java.lang.Integer _oid) {
        this._oid = _oid;
    }

    public java.lang.String getNombre() {
        return _nombre;
    }

    public void setNombre(java.lang.String _nombre) {
        this._nombre = _nombre;
    }

    public java.lang.String getDescripcion() {
        return _descripcion;
    }

    public void setDescripcion(java.lang.String _descripcion) {
        this._descripcion = _descripcion;
    }

    public java.math.BigDecimal getPrecio() {
        return _precio;
    }

    public void setPrecio(java.math.BigDecimal _precio) {
        this._precio = _precio;
    }

    public float getSearchScore() {
        return _searchScore;
    }

    public void setSearchScore(float _searchScore) {
        this._searchScore = _searchScore;
    }

    public String toString() {
        java.lang.StringBuffer sb = new java.lang.StringBuffer();
        sb.append(super.toString());
        int n = sb.length() - 1;
        if (sb.charAt(n) == ']') {
            sb.setCharAt(n, ',');
        } else {
            sb.append('[');
        }
        if (_oid != null)
            sb.append("oid=" + _oid + ',');
        if (_nombre != null)
            sb.append("nombre=" + _nombre + ',');
        if (_descripcion != null)
            sb.append("descripcion=" + _descripcion + ',');
        if (_precio != null)
            sb.append("precio=" + _precio + ',');
        n = sb.length() - 1;
        if (sb.charAt(n) == ',') {
            sb.setCharAt(n, ']');
        } else if (sb.charAt(n) == '[') {
            sb.deleteCharAt(n);
        }
        return sb.toString();
    }

    public boolean equals(java.lang.Object obj) {
        if (!(obj instanceof com.webratio.webapp.Productos)) {
            return false;
        }
        com.webratio.webapp.Productos __other = (com.webratio.webapp.Productos) obj;
        java.lang.Object key = null;
        java.lang.Object otherKey = null;
        key = this.getOid();
        otherKey = __other.getOid();
        if (key == null) {
            if (otherKey != null) {
                return false;
            }
        } else {
            if (otherKey == null) {
                return false;
            } else if (!key.equals(otherKey)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = 0;
        java.lang.Object key = null;
        key = this.getOid();
        if (key != null) {
            hashCode |= key.hashCode();
        }
        return hashCode;
    }
}
